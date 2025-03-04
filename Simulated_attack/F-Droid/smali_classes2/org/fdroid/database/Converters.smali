.class public final Lorg/fdroid/database/Converters;
.super Ljava/lang/Object;
.source "Converters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0007J&\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\u000e2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0007J&\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0007J0\u0010\u0011\u001a \u0012\u0004\u0012\u00020\u0006\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0010\u0018\u00010\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0007J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bH\u0007J&\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u001a\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\u000eH\u0007J&\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u001a\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u0010H\u0007J0\u0010\u0017\u001a\u0004\u0018\u00010\u00062$\u0010\u0013\u001a \u0012\u0004\u0012\u00020\u0006\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u0010\u0018\u00010\u0005H\u0007R \u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\t\u001a \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/fdroid/database/Converters;",
        "",
        "()V",
        "localizedFileV2Serializer",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "",
        "Lorg/fdroid/index/v2/FileV2;",
        "localizedTextV2Serializer",
        "mapOfLocalizedTextV2Serializer",
        "fromStringToListString",
        "",
        "value",
        "fromStringToLocalizedFileV2",
        "Lorg/fdroid/index/v2/LocalizedFileV2;",
        "fromStringToLocalizedTextV2",
        "Lorg/fdroid/index/v2/LocalizedTextV2;",
        "fromStringToMapOfLocalizedTextV2",
        "listStringToString",
        "text",
        "localizedFileV2toString",
        "file",
        "localizedTextV2toString",
        "mapOfLocalizedTextV2toString",
        "database_release"
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
.field public static final INSTANCE:Lorg/fdroid/database/Converters;

.field private static final localizedFileV2Serializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field

.field private static final localizedTextV2Serializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field

.field private static final mapOfLocalizedTextV2Serializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/fdroid/database/Converters;

    invoke-direct {v0}, Lorg/fdroid/database/Converters;-><init>()V

    sput-object v0, Lorg/fdroid/database/Converters;->INSTANCE:Lorg/fdroid/database/Converters;

    .line 13
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sput-object v1, Lorg/fdroid/database/Converters;->localizedTextV2Serializer:Lkotlinx/serialization/KSerializer;

    .line 14
    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sget-object v3, Lorg/fdroid/index/v2/FileV2;->Companion:Lorg/fdroid/index/v2/FileV2$Companion;

    invoke-virtual {v3}, Lorg/fdroid/index/v2/FileV2$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sput-object v2, Lorg/fdroid/database/Converters;->localizedFileV2Serializer:Lkotlinx/serialization/KSerializer;

    .line 16
    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sput-object v0, Lorg/fdroid/database/Converters;->mapOfLocalizedTextV2Serializer:Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromStringToListString(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    const/16 v1, 0x2c

    aput-char v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    .line 50
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final fromStringToLocalizedFileV2(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 30
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/Converters;->localizedFileV2Serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final fromStringToLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 20
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/Converters;->localizedTextV2Serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final fromStringToMapOfLocalizedTextV2(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/Converters;->mapOfLocalizedTextV2Serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final listStringToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ","

    const-string v3, ","

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lorg/fdroid/database/Converters$listStringToString$1;->INSTANCE:Lorg/fdroid/database/Converters$listStringToString$1;

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p1

    .line 56
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final localizedFileV2toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fdroid/index/v2/FileV2;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/Converters;->localizedFileV2Serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final localizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 25
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/Converters;->localizedTextV2Serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final mapOfLocalizedTextV2toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 45
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lorg/fdroid/database/Converters;->mapOfLocalizedTextV2Serializer:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
