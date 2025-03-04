.class public final Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;
.super Ljava/lang/Object;
.source "SerialDescriptors.kt"


# instance fields
.field private annotations:Ljava/util/List;

.field private final elementAnnotations:Ljava/util/List;

.field private final elementDescriptors:Ljava/util/List;

.field private final elementNames:Ljava/util/List;

.field private final elementOptionality:Ljava/util/List;

.field private final serialName:Ljava/lang/String;

.field private final uniqueNames:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->serialName:Ljava/lang/String;

    .line 250
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/List;

    .line 253
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->uniqueNames:Ljava/util/Set;

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementDescriptors:Ljava/util/List;

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementAnnotations:Ljava/util/List;

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementOptionality:Ljava/util/List;

    return-void
.end method

.method public static synthetic element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 279
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 276
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;Z)V
    .locals 1

    const-string v0, "elementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->uniqueNames:Ljava/util/Set;

    .line 282
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/List;

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementDescriptors:Ljava/util/List;

    .line 284
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementAnnotations:Ljava/util/List;

    .line 285
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementOptionality:Ljava/util/List;

    .line 286
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 282
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Element with name \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is already registered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public final getElementAnnotations$kotlinx_serialization_core()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public final getElementDescriptors$kotlinx_serialization_core()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public final getElementNames$kotlinx_serialization_core()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/List;

    return-object v0
.end method

.method public final getElementOptionality$kotlinx_serialization_core()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementOptionality:Ljava/util/List;

    return-object v0
.end method

.method public final setAnnotations(Ljava/util/List;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    return-void
.end method
