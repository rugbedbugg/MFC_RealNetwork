.class public final Lorg/fdroid/index/v1/AppV1$$serializer;
.super Ljava/lang/Object;
.source "AppV1.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/index/v1/AppV1;
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
        "org/fdroid/index/v1/AppV1.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lorg/fdroid/index/v1/AppV1;",
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
.field public static final INSTANCE:Lorg/fdroid/index/v1/AppV1$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/fdroid/index/v1/AppV1$$serializer;

    invoke-direct {v0}, Lorg/fdroid/index/v1/AppV1$$serializer;-><init>()V

    sput-object v0, Lorg/fdroid/index/v1/AppV1$$serializer;->INSTANCE:Lorg/fdroid/index/v1/AppV1$$serializer;

    .line 13
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "org.fdroid.index.v1.AppV1"

    const/16 v3, 0x1f

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "categories"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "antiFeatures"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "summary"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "changelog"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "translation"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "issueTracker"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sourceCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "binaries"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "name"

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

    const-string v0, "suggestedVersionName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "suggestedVersionCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "license"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "webSite"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "added"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "icon"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "packageName"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "lastUpdated"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "localized"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "allowedAPKSigningKeys"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/fdroid/index/v1/AppV1$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 13
    invoke-static {}, Lorg/fdroid/index/v1/AppV1;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x1f

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

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

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

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

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

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

    aput-object v2, v1, v3

    const/16 v3, 0x18

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/16 v5, 0x19

    aput-object v4, v1, v5

    const/16 v4, 0x1a

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x1b

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/fdroid/index/v1/AppV1$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v1/AppV1;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/fdroid/index/v1/AppV1;
    .locals 93

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/fdroid/index/v1/AppV1$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lorg/fdroid/index/v1/AppV1;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    aget-object v3, v2, v9

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    aget-object v9, v2, v8

    invoke-interface {v0, v1, v8, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v0, v1, v7, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v1, v4, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v1, v6, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v1, v15, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v0, v1, v14, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v0, v1, v13, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v0, v1, v5, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v1, v12, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0, v1, v11, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v24, v3

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v23, v3

    const/16 v3, 0xc

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v22, v3

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v20, v3

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v19, v3

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v17, v3

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v16, v3

    const/16 v3, 0x12

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 p1, v3

    const/16 v3, 0x13

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v25, v3

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v26, v3

    const/16 v3, 0x15

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v27, v3

    const/16 v3, 0x16

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v10, 0x17

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v29, v3

    const/16 v3, 0x18

    move-object/from16 v30, v8

    const/4 v8, 0x0

    invoke-interface {v0, v1, v3, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v28, v3

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    move-object/from16 v31, v4

    const/16 v4, 0x19

    invoke-interface {v0, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    move-object/from16 v32, v4

    const/16 v4, 0x1a

    invoke-interface {v0, v1, v4, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v9, 0x1b

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v33, v4

    const/16 v4, 0x1c

    invoke-interface {v0, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v21, v3

    const/16 v4, 0x1d

    aget-object v3, v2, v4

    invoke-interface {v0, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/16 v4, 0x1e

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v4, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const v4, 0x7fffffff

    move-object/from16 v78, p1

    move-object/from16 v90, v2

    move-object/from16 v89, v3

    move/from16 v59, v4

    move-object/from16 v68, v5

    move-object/from16 v64, v6

    move-object/from16 v62, v7

    move-object/from16 v87, v9

    move-object/from16 v83, v10

    move-object/from16 v70, v11

    move-object/from16 v69, v12

    move-object/from16 v67, v13

    move-object/from16 v66, v14

    move-object/from16 v65, v15

    move-object/from16 v77, v16

    move-object/from16 v76, v17

    move-object/from16 v75, v18

    move-object/from16 v74, v19

    move-object/from16 v73, v20

    move-object/from16 v88, v21

    move-object/from16 v72, v22

    move-object/from16 v71, v23

    move-object/from16 v60, v24

    move-object/from16 v79, v25

    move-object/from16 v80, v26

    move-object/from16 v81, v27

    move-object/from16 v84, v28

    move-object/from16 v82, v29

    move-object/from16 v61, v30

    move-object/from16 v63, v31

    move-object/from16 v85, v32

    move-object/from16 v86, v33

    goto/16 :goto_8

    :cond_0
    const/16 v3, 0x1e

    move-object/from16 v92, v10

    move v10, v8

    move-object/from16 v8, v92

    move-object v4, v8

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v11, v7

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v34, v15

    move-object/from16 v35, v34

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

    move-object/from16 v51, v50

    move-object/from16 v52, v51

    move-object/from16 v53, v52

    move/from16 v54, v10

    move-object/from16 v10, v53

    move v8, v9

    move-object v9, v10

    :goto_0
    if-eqz v54, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v3}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    move-object/from16 v55, v9

    const/16 v3, 0x1e

    aget-object v9, v2, v3

    move-object/from16 v56, v10

    move-object/from16 v10, v53

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/high16 v10, 0x40000000    # 2.0f

    or-int/2addr v8, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v53, v9

    move-object/from16 v3, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v57, v52

    :goto_1
    move-object/from16 v10, v56

    const/4 v9, 0x0

    move-object/from16 v92, v42

    move-object/from16 v42, v2

    move-object/from16 v2, v92

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v53

    const/16 v9, 0x1d

    aget-object v3, v2, v9

    move-object/from16 v10, v52

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const/high16 v10, 0x20000000

    or-int/2addr v8, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v57, v3

    :goto_2
    move-object/from16 v3, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    goto :goto_1

    :pswitch_2
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v52

    const/16 v9, 0x1d

    const/16 v3, 0x1c

    sget-object v9, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    move-object/from16 v57, v10

    move-object/from16 v10, v51

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v51, v3

    goto :goto_2

    :pswitch_3
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v51

    move-object/from16 v57, v52

    const/16 v3, 0x1b

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    const/high16 v9, 0x8000000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v3

    goto :goto_2

    :pswitch_4
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v51

    move-object/from16 v57, v52

    const/16 v3, 0x1a

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v49

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v49, v3

    goto :goto_2

    :pswitch_5
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v49

    move-object/from16 v57, v52

    const/16 v3, 0x19

    sget-object v9, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    move-object/from16 v10, v48

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/high16 v9, 0x2000000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v48, v3

    goto :goto_2

    :pswitch_6
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v48

    move-object/from16 v57, v52

    const/16 v3, 0x18

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v47

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v9, 0x1000000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v47, v3

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v47

    move-object/from16 v57, v52

    const/16 v3, 0x17

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    const/high16 v9, 0x800000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v46, v3

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v47

    move-object/from16 v57, v52

    const/16 v3, 0x16

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v45

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v9, 0x400000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v45, v3

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v45

    move-object/from16 v57, v52

    const/16 v3, 0x15

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v44

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v44, v3

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v44

    move-object/from16 v57, v52

    const/16 v3, 0x14

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v43

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v43, v3

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v43

    move-object/from16 v57, v52

    const/16 v3, 0x13

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v10, v42

    invoke-interface {v0, v1, v3, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v2, v3

    move-object/from16 v3, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v10, v56

    const/4 v9, 0x0

    goto/16 :goto_7

    :pswitch_c
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v42

    move-object/from16 v57, v52

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v9, 0x12

    move-object/from16 v92, v41

    move-object/from16 v41, v10

    move-object/from16 v10, v92

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v10, 0x40000

    or-int/2addr v8, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v2, v41

    move-object/from16 v10, v56

    const/4 v9, 0x0

    move-object/from16 v41, v3

    move-object/from16 v3, v35

    goto/16 :goto_7

    :pswitch_d
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0x12

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v16, v10

    move-object/from16 v10, v40

    const/16 v9, 0x11

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v10, 0x20000

    or-int/2addr v8, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v17, v3

    move-object/from16 v3, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    :goto_3
    move-object/from16 v2, v41

    move-object/from16 v10, v56

    const/4 v9, 0x0

    :goto_4
    move-object/from16 v41, v16

    goto/16 :goto_7

    :pswitch_e
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0x11

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v17, v10

    move-object/from16 v10, v39

    const/16 v9, 0x10

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v10, 0x10000

    or-int/2addr v8, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v18, v3

    move-object/from16 v3, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    goto :goto_3

    :pswitch_f
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0x10

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v18, v10

    move-object/from16 v10, v38

    const/16 v9, 0xf

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v10, 0x8000

    or-int/2addr v8, v10

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v19, v3

    move-object/from16 v3, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    goto :goto_3

    :pswitch_10
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0xf

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v19, v10

    move-object/from16 v10, v37

    const/16 v9, 0xe

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x4000

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v20, v3

    move-object/from16 v3, v35

    move-object/from16 v22, v36

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0xe

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v20, v10

    move-object/from16 v10, v36

    const/16 v9, 0xd

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x2000

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v22, v3

    move-object/from16 v3, v35

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0xd

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v22, v10

    move-object/from16 v10, v35

    const/16 v9, 0xc

    invoke-interface {v0, v1, v9, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x1000

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0xc

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v9, 0xb

    invoke-interface {v0, v1, v9, v3, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x800

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v11, v3

    :goto_5
    move-object v3, v10

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0xb

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v9, 0xa

    invoke-interface {v0, v1, v9, v3, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x400

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v12, v3

    goto :goto_5

    :pswitch_15
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0xa

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v9, 0x9

    invoke-interface {v0, v1, v9, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x200

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v5, v3

    goto :goto_5

    :pswitch_16
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0x9

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v9, 0x8

    invoke-interface {v0, v1, v9, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x100

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v13, v3

    goto/16 :goto_5

    :pswitch_17
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/16 v9, 0x8

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v9, 0x7

    invoke-interface {v0, v1, v9, v3, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x80

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v14, v3

    goto/16 :goto_5

    :pswitch_18
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x7

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v9, 0x6

    invoke-interface {v0, v1, v9, v3, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x40

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v15, v3

    goto/16 :goto_5

    :pswitch_19
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x6

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v9, 0x5

    invoke-interface {v0, v1, v9, v3, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x20

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v6, v3

    goto/16 :goto_5

    :pswitch_1a
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x5

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v9, 0x4

    invoke-interface {v0, v1, v9, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x10

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v4, v3

    goto/16 :goto_5

    :pswitch_1b
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x4

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v9, 0x3

    invoke-interface {v0, v1, v9, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x8

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object v7, v3

    goto/16 :goto_5

    :pswitch_1c
    move-object/from16 v55, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x3

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v25, v4

    move-object/from16 v4, v56

    const/4 v9, 0x2

    invoke-interface {v0, v1, v9, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x4

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v4, v25

    move-object/from16 v2, v41

    const/4 v9, 0x0

    move-object/from16 v41, v16

    move-object/from16 v92, v10

    move-object v10, v3

    move-object/from16 v3, v92

    goto/16 :goto_7

    :pswitch_1d
    move-object/from16 v25, v4

    move-object/from16 v55, v9

    move-object v4, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v3, 0x1

    aget-object v9, v2, v3

    move-object/from16 v56, v4

    move-object/from16 v4, v55

    invoke-interface {v0, v1, v3, v9, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    or-int/lit8 v8, v8, 0x2

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v42, v2

    move-object/from16 v55, v4

    move-object v3, v10

    move-object/from16 v4, v25

    goto/16 :goto_3

    :pswitch_1e
    move-object/from16 v25, v4

    move-object v4, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x0

    aget-object v3, v2, v9

    move-object/from16 v42, v2

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v9, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit8 v8, v8, 0x1

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v34, v2

    move-object/from16 v55, v4

    :goto_6
    move-object v3, v10

    move-object/from16 v4, v25

    move-object/from16 v2, v41

    move-object/from16 v10, v56

    goto/16 :goto_4

    :pswitch_1f
    move-object/from16 v25, v4

    move-object v4, v9

    move-object/from16 v56, v10

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    const/4 v9, 0x0

    move-object/from16 v42, v2

    move-object/from16 v2, v34

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v55, v4

    move/from16 v54, v9

    goto :goto_6

    :goto_7
    move-object/from16 v35, v3

    move-object/from16 v40, v17

    move-object/from16 v39, v18

    move-object/from16 v38, v19

    move-object/from16 v37, v20

    move-object/from16 v36, v22

    move-object/from16 v9, v55

    move-object/from16 v52, v57

    const/16 v3, 0x1e

    move-object/from16 v92, v42

    move-object/from16 v42, v2

    move-object/from16 v2, v92

    goto/16 :goto_0

    :cond_1
    move-object/from16 v25, v4

    move-object v4, v9

    move-object/from16 v56, v10

    move-object/from16 v2, v34

    move-object/from16 v10, v35

    move-object/from16 v22, v36

    move-object/from16 v20, v37

    move-object/from16 v19, v38

    move-object/from16 v18, v39

    move-object/from16 v17, v40

    move-object/from16 v16, v41

    move-object/from16 v41, v42

    move-object/from16 v57, v52

    move-object/from16 v60, v2

    move-object/from16 v61, v4

    move-object/from16 v69, v5

    move-object/from16 v65, v6

    move-object/from16 v63, v7

    move/from16 v59, v8

    move-object/from16 v72, v10

    move-object/from16 v71, v11

    move-object/from16 v70, v12

    move-object/from16 v68, v13

    move-object/from16 v67, v14

    move-object/from16 v66, v15

    move-object/from16 v78, v16

    move-object/from16 v77, v17

    move-object/from16 v76, v18

    move-object/from16 v75, v19

    move-object/from16 v74, v20

    move-object/from16 v73, v22

    move-object/from16 v64, v25

    move-object/from16 v79, v41

    move-object/from16 v80, v43

    move-object/from16 v81, v44

    move-object/from16 v82, v45

    move-object/from16 v83, v46

    move-object/from16 v84, v47

    move-object/from16 v85, v48

    move-object/from16 v86, v49

    move-object/from16 v87, v50

    move-object/from16 v88, v51

    move-object/from16 v90, v53

    move-object/from16 v62, v56

    move-object/from16 v89, v57

    :goto_8
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lorg/fdroid/index/v1/AppV1;

    move-object/from16 v58, v0

    const/16 v91, 0x0

    invoke-direct/range {v58 .. v91}, Lorg/fdroid/index/v1/AppV1;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1f
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
    sget-object v0, Lorg/fdroid/index/v1/AppV1$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/fdroid/index/v1/AppV1;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v1/AppV1$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v1/AppV1;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/fdroid/index/v1/AppV1;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lorg/fdroid/index/v1/AppV1$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/fdroid/index/v1/AppV1;->write$Self$index_release(Lorg/fdroid/index/v1/AppV1;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 13
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
