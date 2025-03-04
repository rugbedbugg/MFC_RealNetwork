.class public final Lorg/fdroid/index/v2/MetadataV2$$serializer;
.super Ljava/lang/Object;
.source "PackageV2.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/index/v2/MetadataV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "org/fdroid/index/v2/MetadataV2.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lorg/fdroid/index/v2/MetadataV2;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/index/v2/MetadataV2$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/fdroid/index/v2/MetadataV2$$serializer;

    invoke-direct {v0}, Lorg/fdroid/index/v2/MetadataV2$$serializer;-><init>()V

    sput-object v0, Lorg/fdroid/index/v2/MetadataV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/MetadataV2$$serializer;

    .line 21
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "org.fdroid.index.v2.MetadataV2"

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "name"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "summary"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "added"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "lastUpdated"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webSite"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "changelog"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "license"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sourceCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "issueTracker"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "translation"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "preferredSigner"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "categories"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "authorName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "authorEmail"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "authorWebSite"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "authorPhone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "donate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "liberapayID"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "liberapay"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "openCollective"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "bitcoin"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "litecoin"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "flattrID"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "icon"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "featureGraphic"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "promoGraphic"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "tvBanner"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "video"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "screenshots"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/fdroid/index/v2/MetadataV2$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lorg/fdroid/index/v2/MetadataV2;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x1e

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/4 v3, 0x6

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x7

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x8

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x9

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xa

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xb

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xc

    aget-object v4, v0, v3

    aput-object v4, v1, v3

    const/16 v3, 0xd

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xe

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xf

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x10

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x11

    aget-object v4, v0, v3

    aput-object v4, v1, v3

    const/16 v3, 0x12

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x13

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x14

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x15

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x16

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x17

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Lorg/fdroid/index/v2/Screenshots$$serializer;->INSTANCE:Lorg/fdroid/index/v2/Screenshots$$serializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/fdroid/index/v2/MetadataV2$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v2/MetadataV2;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v2/MetadataV2;
    .locals 93

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v2/MetadataV2$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/fdroid/index/v2/MetadataV2;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x4

    const/4 v15, 0x2

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    aget-object v3, v2, v14

    invoke-interface {v0, v1, v14, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    aget-object v14, v2, v11

    invoke-interface {v0, v1, v11, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    aget-object v14, v2, v15

    invoke-interface {v0, v1, v15, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v24

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v26

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v9, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v1, v8, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0, v1, v7, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v1, v12, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0, v1, v6, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v1, v5, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v13, 0xb

    invoke-interface {v0, v1, v13, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v22, v3

    const/16 v15, 0xc

    aget-object v3, v2, v15

    invoke-interface {v0, v1, v15, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/16 v15, 0xd

    invoke-interface {v0, v1, v15, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v23, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v28, v3

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v29, v3

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v21, v3

    move-object/from16 v20, v5

    const/16 v3, 0x11

    aget-object v5, v2, v3

    invoke-interface {v0, v1, v3, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/16 v5, 0x12

    invoke-interface {v0, v1, v5, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v30, v3

    const/16 v3, 0x13

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v31, v3

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v32, v3

    const/16 v3, 0x15

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v33, v3

    const/16 v3, 0x16

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v34, v3

    const/16 v3, 0x17

    invoke-interface {v0, v1, v3, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v19, v3

    const/16 v10, 0x18

    aget-object v3, v2, v10

    invoke-interface {v0, v1, v10, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v18, v3

    const/16 v10, 0x19

    aget-object v3, v2, v10

    invoke-interface {v0, v1, v10, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v17, v3

    const/16 v10, 0x1a

    aget-object v3, v2, v10

    invoke-interface {v0, v1, v10, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v16, v3

    const/16 v10, 0x1b

    aget-object v3, v2, v10

    invoke-interface {v0, v1, v10, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v10, 0x1c

    aget-object v2, v2, v10

    invoke-interface {v0, v1, v10, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/16 v10, 0x1d

    move-object/from16 p1, v2

    sget-object v2, Lorg/fdroid/index/v2/Screenshots$$serializer;->INSTANCE:Lorg/fdroid/index/v2/Screenshots$$serializer;

    invoke-interface {v0, v1, v10, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fdroid/index/v2/Screenshots;

    const v4, 0x3fffffff    # 1.9999999f

    move-object/from16 v89, p1

    move-object/from16 v90, v2

    move-object/from16 v88, v3

    move/from16 v58, v4

    move-object/from16 v79, v5

    move-object/from16 v70, v6

    move-object/from16 v68, v7

    move-object/from16 v67, v8

    move-object/from16 v66, v9

    move-object/from16 v60, v11

    move-object/from16 v69, v12

    move-object/from16 v72, v13

    move-object/from16 v61, v14

    move-object/from16 v74, v15

    move-object/from16 v87, v16

    move-object/from16 v86, v17

    move-object/from16 v85, v18

    move-object/from16 v84, v19

    move-object/from16 v71, v20

    move-object/from16 v77, v21

    move-object/from16 v59, v22

    move-object/from16 v73, v23

    move-wide/from16 v62, v24

    move-wide/from16 v64, v26

    move-object/from16 v75, v28

    move-object/from16 v76, v29

    move-object/from16 v78, v30

    move-object/from16 v80, v31

    move-object/from16 v81, v32

    move-object/from16 v82, v33

    move-object/from16 v83, v34

    goto/16 :goto_b

    :cond_0
    const-wide/16 v24, 0x0

    move-object v3, v4

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v35, v15

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move/from16 v55, v11

    move-wide/from16 v51, v24

    move-wide/from16 v53, v51

    move-object/from16 v11, v50

    move v4, v14

    move-object v14, v11

    :goto_0
    if-eqz v55, :cond_1

    move-object/from16 v56, v10

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v10}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v10, 0x1d

    move-object/from16 v57, v13

    sget-object v13, Lorg/fdroid/index/v2/Screenshots$$serializer;->INSTANCE:Lorg/fdroid/index/v2/Screenshots$$serializer;

    invoke-interface {v0, v1, v10, v13, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/fdroid/index/v2/Screenshots;

    const/high16 v13, 0x20000000

    or-int/2addr v4, v13

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v15, v10

    :goto_1
    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v21, v50

    move-object/from16 v13, v57

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v50, v49

    :goto_3
    move-object/from16 v92, v36

    move-object/from16 v36, v2

    move-object/from16 v2, v92

    goto/16 :goto_a

    :pswitch_1
    move-object/from16 v57, v13

    const/16 v10, 0x1c

    aget-object v13, v2, v10

    invoke-interface {v0, v1, v10, v13, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const/high16 v13, 0x10000000

    :goto_4
    or-int/2addr v4, v13

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :pswitch_2
    move-object/from16 v57, v13

    const/16 v13, 0x1b

    aget-object v10, v2, v13

    invoke-interface {v0, v1, v13, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    const/high16 v14, 0x8000000

    or-int/2addr v4, v14

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v14, v10

    goto :goto_1

    :pswitch_3
    move-object/from16 v57, v13

    const/16 v10, 0x1a

    aget-object v13, v2, v10

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/high16 v13, 0x4000000

    goto :goto_4

    :pswitch_4
    move-object/from16 v57, v13

    const/16 v13, 0x19

    aget-object v10, v2, v13

    invoke-interface {v0, v1, v13, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const/high16 v10, 0x2000000

    :goto_5
    or-int/2addr v4, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :pswitch_5
    move-object/from16 v57, v13

    const/16 v10, 0x18

    aget-object v13, v2, v10

    invoke-interface {v0, v1, v10, v13, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const/high16 v13, 0x1000000

    goto :goto_4

    :pswitch_6
    move-object/from16 v57, v13

    const/16 v10, 0x18

    const/16 v13, 0x17

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v13, v10, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/high16 v12, 0x800000

    or-int/2addr v4, v12

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v12, v10

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v57, v13

    const/16 v10, 0x16

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v10, v13, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/high16 v10, 0x400000

    goto :goto_5

    :pswitch_8
    move-object/from16 v57, v13

    const/16 v10, 0x15

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v10, v13, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/high16 v10, 0x200000

    goto :goto_5

    :pswitch_9
    move-object/from16 v57, v13

    const/16 v10, 0x14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v10, v13, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/high16 v10, 0x100000

    goto :goto_5

    :pswitch_a
    move-object/from16 v57, v13

    const/16 v10, 0x13

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v58, v3

    move-object/from16 v3, v57

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v10, 0x80000

    or-int/2addr v4, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v13, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v21, v50

    :goto_6
    move-object/from16 v3, v58

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v58, v3

    move-object v3, v13

    const/16 v10, 0x12

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v57, v3

    move-object/from16 v3, v56

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v10, 0x40000

    or-int/2addr v4, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v56, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v21, v50

    move-object/from16 v13, v57

    goto :goto_6

    :pswitch_c
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v56

    const/16 v10, 0x11

    aget-object v13, v2, v10

    move-object/from16 v3, v50

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/high16 v13, 0x20000

    or-int/2addr v4, v13

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v21, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v50, v49

    :goto_7
    move-object/from16 v13, v57

    move-object/from16 v3, v58

    const/4 v10, 0x0

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v50

    const/16 v10, 0x11

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v21, v3

    move-object/from16 v3, v49

    const/16 v10, 0x10

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v13, 0x10000

    or-int/2addr v4, v13

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v3

    :goto_8
    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    goto :goto_7

    :pswitch_e
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v49

    move-object/from16 v21, v50

    const/16 v10, 0x10

    const/16 v13, 0xf

    sget-object v10, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v50, v3

    move-object/from16 v3, v48

    invoke-interface {v0, v1, v13, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v10, 0x8000

    or-int/2addr v4, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v48, v3

    goto :goto_8

    :pswitch_f
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v48

    move-object/from16 v21, v50

    move-object/from16 v50, v49

    const/16 v10, 0xe

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v47

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x4000

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v47, v3

    goto :goto_8

    :pswitch_10
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v47

    move-object/from16 v21, v50

    move-object/from16 v50, v49

    const/16 v10, 0xd

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v46

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x2000

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v46, v3

    goto :goto_8

    :pswitch_11
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v46

    move-object/from16 v21, v50

    const/16 v10, 0xc

    move-object/from16 v50, v49

    aget-object v13, v2, v10

    move-object/from16 v22, v3

    move-object/from16 v3, v45

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    or-int/lit16 v4, v4, 0x1000

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v3

    move-object/from16 v46, v22

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    goto/16 :goto_7

    :pswitch_12
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/16 v10, 0xc

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v23, v3

    move-object/from16 v3, v44

    const/16 v10, 0xb

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x800

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v34, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    goto/16 :goto_7

    :pswitch_13
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/16 v10, 0xb

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v34, v3

    move-object/from16 v3, v43

    const/16 v10, 0xa

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x400

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v33, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    goto/16 :goto_7

    :pswitch_14
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/16 v10, 0xa

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v33, v3

    move-object/from16 v3, v42

    const/16 v10, 0x9

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x200

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v32, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    goto/16 :goto_7

    :pswitch_15
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/16 v10, 0x9

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v32, v3

    move-object/from16 v3, v41

    const/16 v10, 0x8

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x100

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v31, v3

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    goto/16 :goto_7

    :pswitch_16
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/16 v10, 0x8

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v31, v3

    move-object/from16 v3, v40

    const/4 v10, 0x7

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v4, v4, 0x80

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v3

    move-object/from16 v29, v39

    goto/16 :goto_7

    :pswitch_17
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x7

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v30, v3

    move-object/from16 v3, v39

    const/4 v10, 0x6

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v4, v4, 0x40

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v29, v3

    goto/16 :goto_7

    :pswitch_18
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x6

    move-object/from16 v50, v49

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v29, v3

    move-object/from16 v3, v38

    const/4 v10, 0x5

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v4, v4, 0x20

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v38, v3

    goto/16 :goto_7

    :pswitch_19
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v38

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x5

    const/4 v13, 0x4

    move-object/from16 v50, v49

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v53

    or-int/lit8 v4, v4, 0x10

    sget-object v28, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_7

    :pswitch_1a
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v38

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x3

    const/4 v13, 0x4

    move-object/from16 v50, v49

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v51

    or-int/lit8 v4, v4, 0x8

    sget-object v27, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_7

    :pswitch_1b
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v38

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x2

    move-object/from16 v50, v49

    aget-object v13, v2, v10

    move-object/from16 v3, v37

    invoke-interface {v0, v1, v10, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    or-int/lit8 v4, v4, 0x4

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v37, v3

    goto/16 :goto_7

    :pswitch_1c
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v37

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v13, 0x1

    move-object/from16 v50, v49

    aget-object v10, v2, v13

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v13, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    or-int/lit8 v4, v4, 0x2

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v36, v2

    move-object v2, v3

    move-object/from16 v13, v57

    move-object/from16 v3, v58

    const/4 v10, 0x0

    goto/16 :goto_a

    :pswitch_1d
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v36

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x0

    move-object/from16 v50, v49

    aget-object v13, v2, v10

    move-object/from16 v36, v2

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v10, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    or-int/lit8 v4, v4, 0x1

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v35, v2

    move-object v2, v3

    :goto_9
    move-object/from16 v13, v57

    move-object/from16 v3, v58

    goto :goto_a

    :pswitch_1e
    move-object/from16 v58, v3

    move-object/from16 v57, v13

    move-object/from16 v3, v36

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    const/4 v10, 0x0

    move-object/from16 v36, v2

    move-object/from16 v2, v35

    move-object/from16 v50, v49

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v3

    move/from16 v55, v10

    goto :goto_9

    :goto_a
    move-object/from16 v45, v23

    move-object/from16 v39, v29

    move-object/from16 v40, v30

    move-object/from16 v41, v31

    move-object/from16 v42, v32

    move-object/from16 v43, v33

    move-object/from16 v44, v34

    move-object/from16 v49, v50

    move-object/from16 v10, v56

    move-object/from16 v50, v21

    move-object/from16 v92, v36

    move-object/from16 v36, v2

    move-object/from16 v2, v92

    goto/16 :goto_0

    :cond_1
    move-object/from16 v58, v3

    move-object/from16 v56, v10

    move-object/from16 v57, v13

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v29, v39

    move-object/from16 v30, v40

    move-object/from16 v31, v41

    move-object/from16 v32, v42

    move-object/from16 v33, v43

    move-object/from16 v34, v44

    move-object/from16 v23, v45

    move-object/from16 v22, v46

    move-object/from16 v21, v50

    move-object/from16 v50, v49

    move-object/from16 v59, v2

    move-object/from16 v60, v3

    move-object/from16 v86, v5

    move-object/from16 v85, v6

    move-object/from16 v83, v7

    move-object/from16 v82, v8

    move-object/from16 v81, v9

    move-object/from16 v89, v11

    move-object/from16 v84, v12

    move-object/from16 v88, v14

    move-object/from16 v90, v15

    move-object/from16 v78, v21

    move-object/from16 v74, v22

    move-object/from16 v73, v23

    move-object/from16 v67, v29

    move-object/from16 v68, v30

    move-object/from16 v69, v31

    move-object/from16 v70, v32

    move-object/from16 v71, v33

    move-object/from16 v72, v34

    move-object/from16 v61, v37

    move-object/from16 v66, v38

    move-object/from16 v75, v47

    move-object/from16 v76, v48

    move-object/from16 v77, v50

    move-wide/from16 v62, v51

    move-wide/from16 v64, v53

    move-object/from16 v79, v56

    move-object/from16 v80, v57

    move-object/from16 v87, v58

    move/from16 v58, v4

    :goto_b
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/fdroid/index/v2/MetadataV2;

    move-object/from16 v57, v0

    const/16 v91, 0x0

    invoke-direct/range {v57 .. v91}, Lorg/fdroid/index/v2/MetadataV2;-><init>(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/fdroid/index/v2/Screenshots;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    sget-object v0, Lorg/fdroid/index/v2/MetadataV2$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lorg/fdroid/index/v2/MetadataV2;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v2/MetadataV2$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v2/MetadataV2;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v2/MetadataV2;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lorg/fdroid/index/v2/MetadataV2$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/fdroid/index/v2/MetadataV2;->write$Self$index_release(Lorg/fdroid/index/v2/MetadataV2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
