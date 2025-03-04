.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;
.super Ljava/lang/Object;
.source "SerialDescriptor.kt"

# interfaces
.implements Ljava/util/Iterator;
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
.field final synthetic $this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private elementsLeft:I


# direct methods
.method constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->$this_elementNames:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 300
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    iget v2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementNames$1$1;->elementsLeft:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
