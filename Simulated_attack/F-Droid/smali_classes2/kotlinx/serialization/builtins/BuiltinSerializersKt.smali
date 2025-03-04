.class public abstract Lkotlinx/serialization/builtins/BuiltinSerializersKt;
.super Ljava/lang/Object;
.source "BuiltinSerializers.kt"


# direct methods
.method public static final ArraySerializer(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "kClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final BooleanArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 173
    sget-object v0, Lkotlinx/serialization/internal/BooleanArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanArraySerializer;

    return-object v0
.end method

.method public static final ByteArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 75
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    return-object v0
.end method

.method public static final CharArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 64
    sget-object v0, Lkotlinx/serialization/internal/CharArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/CharArraySerializer;

    return-object v0
.end method

.method public static final DoubleArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 162
    sget-object v0, Lkotlinx/serialization/internal/DoubleArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;

    return-object v0
.end method

.method public static final FloatArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 151
    sget-object v0, Lkotlinx/serialization/internal/FloatArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatArraySerializer;

    return-object v0
.end method

.method public static final IntArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 113
    sget-object v0, Lkotlinx/serialization/internal/IntArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/IntArraySerializer;

    return-object v0
.end method

.method public static final ListSerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final LongArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 132
    sget-object v0, Lkotlinx/serialization/internal/LongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/LongArraySerializer;

    return-object v0
.end method

.method public static final MapEntrySerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lkotlinx/serialization/internal/MapEntrySerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final PairSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lkotlinx/serialization/internal/PairSerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final ShortArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 94
    sget-object v0, Lkotlinx/serialization/internal/ShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ShortArraySerializer;

    return-object v0
.end method

.method public static final TripleSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "aSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lkotlinx/serialization/internal/TripleSerializer;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/serialization/internal/TripleSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final UByteArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 83
    sget-object v0, Lkotlinx/serialization/internal/UByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteArraySerializer;

    return-object v0
.end method

.method public static final UIntArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 121
    sget-object v0, Lkotlinx/serialization/internal/UIntArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntArraySerializer;

    return-object v0
.end method

.method public static final ULongArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 140
    sget-object v0, Lkotlinx/serialization/internal/ULongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongArraySerializer;

    return-object v0
.end method

.method public static final UShortArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 102
    sget-object v0, Lkotlinx/serialization/internal/UShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;

    return-object v0
.end method

.method public static final getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/NullableSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/NullableSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final serializer(Lkotlin/UByte$Companion;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object p0, Lkotlinx/serialization/internal/UByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/UInt$Companion;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object p0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/ULong$Companion;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    sget-object p0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/UShort$Companion;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object p0, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/Unit;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object p0, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object p0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object p0, Lkotlinx/serialization/internal/ByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/CharCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object p0, Lkotlinx/serialization/internal/CharSerializer;->INSTANCE:Lkotlinx/serialization/internal/CharSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object p0, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object p0, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object p0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object p0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/ShortCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object p0, Lkotlinx/serialization/internal/ShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/ShortSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/time/Duration$Companion;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object p0, Lkotlinx/serialization/internal/DurationSerializer;->INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

    return-object p0
.end method
