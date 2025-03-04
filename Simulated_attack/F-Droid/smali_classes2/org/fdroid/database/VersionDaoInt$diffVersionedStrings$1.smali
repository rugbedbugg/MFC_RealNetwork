.class final Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VersionDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->diffVersionedStrings(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $type:Lorg/fdroid/database/VersionedStringType;

.field final synthetic $version:Lorg/fdroid/database/Version;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;->$version:Lorg/fdroid/database/Version;

    iput-object p2, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;->$type:Lorg/fdroid/database/VersionedStringType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {p0, p1}, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;->invoke(Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;
    .locals 4

    const-string v0, "permissionArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    .line 32
    sget-object v2, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v3, Lorg/fdroid/index/v2/PermissionV2;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;->$version:Lorg/fdroid/database/Version;

    iget-object v1, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$1;->$type:Lorg/fdroid/database/VersionedStringType;

    .line 154
    invoke-static {p1, v0, v1}, Lorg/fdroid/database/VersionKt;->toVersionedString(Ljava/util/List;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
