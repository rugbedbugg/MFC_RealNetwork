.class public final Lkotlinx/serialization/internal/UShortArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "PrimitiveArraysSerializers.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/internal/UShortArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UShortArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 479
    sget-object v0, Lkotlin/UShort;->Companion:Lkotlin/UShort$Companion;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/UShort$Companion;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    .line 475
    check-cast p1, Lkotlin/UShortArray;

    invoke-virtual {p1}, Lkotlin/UShortArray;->unbox-impl()[S

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UShortArraySerializer;->collectionSize-rL5Bavg([S)I

    move-result p1

    return p1
.end method

.method protected collectionSize-rL5Bavg([S)I
    .locals 1

    const-string v0, "$this$collectionSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p1

    return p1
.end method

.method public bridge synthetic empty()Ljava/lang/Object;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortArraySerializer;->empty-amswpOA()[S

    move-result-object v0

    invoke-static {v0}, Lkotlin/UShortArray;->box-impl([S)Lkotlin/UShortArray;

    move-result-object v0

    return-object v0
.end method

.method protected empty-amswpOA()[S
    .locals 1

    const/4 v0, 0x0

    .line 483
    invoke-static {v0}, Lkotlin/UShortArray;->constructor-impl(I)[S

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 475
    check-cast p3, Lkotlinx/serialization/internal/UShortArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/UShortArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UShortArrayBuilder;Z)V

    return-void
.end method

.method protected readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UShortArrayBuilder;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-interface {p1, p4, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeShort()S

    move-result p1

    invoke-static {p1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result p1

    invoke-virtual {p3, p1}, Lkotlinx/serialization/internal/UShortArrayBuilder;->append-xj2QHRw$kotlinx_serialization_core(S)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 475
    check-cast p1, Lkotlin/UShortArray;

    invoke-virtual {p1}, Lkotlin/UShortArray;->unbox-impl()[S

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UShortArraySerializer;->toBuilder-rL5Bavg([S)Lkotlinx/serialization/internal/UShortArrayBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected toBuilder-rL5Bavg([S)Lkotlinx/serialization/internal/UShortArrayBuilder;
    .locals 2

    const-string v0, "$this$toBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    new-instance v0, Lkotlinx/serialization/internal/UShortArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/serialization/internal/UShortArrayBuilder;-><init>([SLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 0

    .line 475
    check-cast p2, Lkotlin/UShortArray;

    invoke-virtual {p2}, Lkotlin/UShortArray;->unbox-impl()[S

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/UShortArraySerializer;->writeContent-eny0XGE(Lkotlinx/serialization/encoding/CompositeEncoder;[SI)V

    return-void
.end method

.method protected writeContent-eny0XGE(Lkotlinx/serialization/encoding/CompositeEncoder;[SI)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 491
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Encoder;

    move-result-object v1

    invoke-static {p2, v0}, Lkotlin/UShortArray;->get-Mh2AYeg([SI)S

    move-result v2

    invoke-interface {v1, v2}, Lkotlinx/serialization/encoding/Encoder;->encodeShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
