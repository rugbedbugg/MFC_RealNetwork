.class final Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;
.super Ljava/lang/Object;
.source "IndexV2FullStreamProcessor.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndexStreamSerializer"
.end annotation


# instance fields
.field private appsProcessed:I

.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field private final onAppProcessed:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

.field private final version:J


# direct methods
.method public constructor <init>(Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;JLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "onAppProcessed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->version:J

    iput-object p4, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->onAppProcessed:Lkotlin/jvm/functions/Function1;

    .line 35
    sget-object p1, Lorg/fdroid/index/v2/IndexV2;->Companion:Lorg/fdroid/index/v2/IndexV2$Companion;

    invoke-virtual {p1}, Lorg/fdroid/index/v2/IndexV2$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private final deserializePackages(Lkotlinx/serialization/json/JsonDecoder;I)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "packages"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    .line 78
    :goto_0
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->readMapEntry(Lkotlinx/serialization/encoding/CompositeDecoder;I)V

    iget v0, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->appsProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->appsProcessed:I

    iget-object v1, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->onAppProcessed:Lkotlin/jvm/functions/Function1;

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final deserializeRepo(Lkotlinx/serialization/json/JsonDecoder;I)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v1, "repo"

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 69
    sget-object p2, Lorg/fdroid/index/v2/RepoV2;->Companion:Lorg/fdroid/index/v2/RepoV2$Companion;

    invoke-virtual {p2}, Lorg/fdroid/index/v2/RepoV2$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Decoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/RepoV2;

    iget-object p2, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    .line 70
    invoke-static {p2}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;)Lorg/fdroid/index/v2/IndexV2StreamReceiver;

    move-result-object p2

    iget-wide v0, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->version:J

    invoke-interface {p2, p1, v0, v1}, Lorg/fdroid/index/v2/IndexV2StreamReceiver;->receive(Lorg/fdroid/index/v2/RepoV2;J)V

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readMapEntry(Lkotlinx/serialization/encoding/CompositeDecoder;I)V
    .locals 9

    .line 88
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 91
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    sget-object p2, Lorg/fdroid/index/v2/PackageV2;->Companion:Lorg/fdroid/index/v2/PackageV2$Companion;

    invoke-virtual {p2}, Lorg/fdroid/index/v2/PackageV2$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p1

    .line 90
    invoke-static/range {v2 .. v8}, Lkotlinx/serialization/encoding/CompositeDecoder$DefaultImpls;->decodeSerializableElement$default(Lkotlinx/serialization/encoding/CompositeDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fdroid/index/v2/PackageV2;

    iget-object p2, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    .line 93
    invoke-static {p2}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;)Lorg/fdroid/index/v2/IndexV2StreamReceiver;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lorg/fdroid/index/v2/IndexV2StreamReceiver;->receive(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v2/IndexV2;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v2/IndexV2;
    .locals 4

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 41
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    .line 42
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    const-string v2, "repo"

    invoke-interface {v0, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const-string v3, "packages"

    invoke-interface {v2, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v2

    .line 45
    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 47
    invoke-direct {p0, p1, v3}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->deserializeRepo(Lkotlinx/serialization/json/JsonDecoder;I)V

    .line 48
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 49
    invoke-direct {p0, p1, v0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->deserializePackages(Lkotlinx/serialization/json/JsonDecoder;I)V

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_4

    .line 52
    invoke-direct {p0, p1, v3}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->deserializePackages(Lkotlinx/serialization/json/JsonDecoder;I)V

    .line 53
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 54
    invoke-direct {p0, p1, v2}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->deserializeRepo(Lkotlinx/serialization/json/JsonDecoder;I)V

    .line 60
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p0}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget-object p1, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->this$0:Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;

    .line 63
    invoke-static {p1}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;->access$getIndexStreamReceiver$p(Lorg/fdroid/index/v2/IndexV2FullStreamProcessor;)Lorg/fdroid/index/v2/IndexV2StreamReceiver;

    move-result-object p1

    invoke-interface {p1}, Lorg/fdroid/index/v2/IndexV2StreamReceiver;->onStreamEnded()V

    return-object v1

    .line 54
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected startIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can be deserialized only by JSON"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/fdroid/index/v2/IndexV2;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v2/IndexV2FullStreamProcessor$IndexStreamSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v2/IndexV2;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v2/IndexV2;)V
    .locals 0

    const-string p2, "encoder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented"

    .line 97
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
