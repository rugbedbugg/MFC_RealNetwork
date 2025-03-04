.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/SerialDescriptorKt;->getElementNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;->$this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 71
    new-instance v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$special$$inlined$Iterable$2;->$this_elementNames$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-direct {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object v0
.end method
