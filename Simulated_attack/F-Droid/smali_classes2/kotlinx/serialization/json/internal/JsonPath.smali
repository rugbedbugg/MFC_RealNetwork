.class public final Lkotlinx/serialization/json/internal/JsonPath;
.super Ljava/lang/Object;
.source "JsonPath.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/JsonPath$Tombstone;
    }
.end annotation


# instance fields
.field private currentDepth:I

.field private currentObjectPath:[Ljava/lang/Object;

.field private indicies:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_0

    .line 43
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    iput v3, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    return-void
.end method

.method private final resize()V
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    .line 136
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    .line 137
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 8

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    .line 101
    aget-object v3, v3, v2

    .line 102
    instance-of v4, v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v5, "]"

    const-string v6, "["

    if-eqz v4, :cond_1

    .line 103
    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    sget-object v7, Lkotlinx/serialization/descriptors/StructureKind$LIST;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    .line 104
    aget v3, v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    .line 106
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    .line 110
    aget v4, v4, v2

    if-ltz v4, :cond_2

    const-string v5, "."

    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v3, v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_1
    sget-object v4, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    if-eq v3, v4, :cond_2

    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final popDescriptor()V
    .locals 5

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    .line 85
    aget v2, v1, v0

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-ne v2, v3, :cond_0

    .line 86
    aput v4, v1, v0

    add-int/2addr v0, v4

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    if-eq v0, v4, :cond_1

    add-int/2addr v0, v4

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    :cond_1
    return-void
.end method

.method public final pushDescriptor(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    const-string v0, "sd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    .line 49
    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonPath;->resize()V

    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    .line 52
    aput-object p1, v1, v0

    return-void
.end method

.method public final resetCurrentMapKey()V
    .locals 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    .line 77
    aget v0, v0, v1

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    .line 78
    sget-object v2, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonPath;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateCurrentMapKey(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    .line 68
    aget v0, v0, v1

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v1, v0, :cond_0

    .line 69
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonPath;->resize()V

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentObjectPath:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    .line 71
    aput-object p1, v0, v1

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    .line 72
    aput v2, p1, v1

    return-void
.end method

.method public final updateDescriptorIndex(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPath;->indicies:[I

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonPath;->currentDepth:I

    .line 57
    aput p1, v0, v1

    return-void
.end method
