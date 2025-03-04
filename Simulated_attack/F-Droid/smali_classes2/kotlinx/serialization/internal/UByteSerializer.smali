.class public final Lkotlinx/serialization/internal/UByteSerializer;
.super Ljava/lang/Object;
.source "ValueClasses.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/UByteSerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UByteSerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

    .line 40
    sget-object v0, Lkotlin/jvm/internal/ByteCompanionObject;->INSTANCE:Lkotlin/jvm/internal/ByteCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const-string v1, "kotlin.UByte"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/InlineClassDescriptorKt;->InlinePrimitiveDescriptor(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/UByteSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UByteSerializer;->deserialize-Wa3L5BU(Lkotlinx/serialization/encoding/Decoder;)B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->box-impl(B)Lkotlin/UByte;

    move-result-object p1

    return-object p1
.end method

.method public deserialize-Wa3L5BU(Lkotlinx/serialization/encoding/Decoder;)B
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UByteSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeByte()B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->constructor-impl(B)B

    move-result p1

    return p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    sget-object v0, Lkotlinx/serialization/internal/UByteSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Lkotlin/UByte;

    invoke-virtual {p2}, Lkotlin/UByte;->unbox-impl()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/UByteSerializer;->serialize-EK-6454(Lkotlinx/serialization/encoding/Encoder;B)V

    return-void
.end method

.method public serialize-EK-6454(Lkotlinx/serialization/encoding/Encoder;B)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UByteSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeByte(B)V

    return-void
.end method
