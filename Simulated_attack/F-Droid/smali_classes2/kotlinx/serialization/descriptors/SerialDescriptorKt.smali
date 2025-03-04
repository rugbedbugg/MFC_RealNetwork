.class public abstract Lkotlinx/serialization/descriptors/SerialDescriptorKt;
.super Ljava/lang/Object;
.source "SerialDescriptor.kt"


# direct methods
.method public static final getElementDescriptors(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v0
.end method

.method public static final getElementNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;

    invoke-direct {v0, p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v0
.end method
