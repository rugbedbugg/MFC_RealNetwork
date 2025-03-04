.class final Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;
.super Ljava/lang/Object;
.source "JsonElementSerializers.kt"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonObjectSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JsonObjectDescriptor"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

.field private static final serialName:Ljava/lang/String;


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    const-string v0, "kotlinx.serialization.json.JsonObject"

    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->serialName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v0, v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElementAnnotations(I)Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 1

    .line 0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getElementsCount()I
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    return v0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    return-object v0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->serialName:Ljava/lang/String;

    return-object v0
.end method

.method public isElementOptional(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    move-result p1

    return p1
.end method

.method public isInline()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isInline()Z

    move-result v0

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->$$delegate_0:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v0

    return v0
.end method
