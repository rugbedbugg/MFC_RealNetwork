.class public abstract Lkotlinx/serialization/descriptors/ContextAwareKt;
.super Ljava/lang/Object;
.source "ContextAware.kt"


# direct methods
.method public static final getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    instance-of v0, p0, Lkotlinx/serialization/descriptors/ContextDescriptor;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/serialization/descriptors/ContextDescriptor;

    iget-object p0, p0, Lkotlinx/serialization/descriptors/ContextDescriptor;->kClass:Lkotlin/reflect/KClass;

    goto :goto_0

    .line 49
    :cond_0
    instance-of v0, p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/serialization/internal/SerialDescriptorForNullable;

    invoke-virtual {p0}, Lkotlinx/serialization/internal/SerialDescriptorForNullable;->getOriginal$kotlinx_serialization_core()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/ContextAwareKt;->getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getContextualDescriptor(Lkotlinx/serialization/modules/SerializersModule;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lkotlinx/serialization/descriptors/ContextAwareKt;->getCapturedKClass(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final withContext(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lkotlinx/serialization/descriptors/ContextDescriptor;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/descriptors/ContextDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/reflect/KClass;)V

    return-object v0
.end method
