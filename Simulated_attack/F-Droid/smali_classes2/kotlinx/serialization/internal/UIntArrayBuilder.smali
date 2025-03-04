.class public final Lkotlinx/serialization/internal/UIntArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "PrimitiveArraysSerializers.kt"


# instance fields
.field private buffer:[I

.field private position:I


# direct methods
.method private constructor <init>([I)V
    .locals 0

    .line 554
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    .line 557
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 561
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UIntArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method

.method public synthetic constructor <init>([ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/UIntArrayBuilder;-><init>([I)V

    return-void
.end method


# virtual methods
.method public final append-WZ4Q5Ns$kotlinx_serialization_core(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 570
    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    .line 571
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UIntArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->position:I

    invoke-static {v0, v1, p1}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 1

    .line 549
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UIntArrayBuilder;->build--hP7Qyg$kotlinx_serialization_core()[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/UIntArray;->box-impl([I)Lkotlin/UIntArray;

    move-result-object v0

    return-object v0
.end method

.method public build--hP7Qyg$kotlinx_serialization_core()[I
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    .line 574
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UIntArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/UIntArray;->constructor-impl([I)[I

    move-result-object v0

    return-object v0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    .line 565
    invoke-static {v0}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    .line 566
    invoke-static {v0}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/UIntArray;->constructor-impl([I)[I

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->buffer:[I

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/serialization/internal/UIntArrayBuilder;->position:I

    return v0
.end method
