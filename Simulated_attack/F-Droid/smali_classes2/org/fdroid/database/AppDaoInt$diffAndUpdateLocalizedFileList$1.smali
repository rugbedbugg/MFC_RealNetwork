.class final Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/AppDaoInt$DefaultImpls;->diffAndUpdateLocalizedFileList(Lorg/fdroid/database/AppDaoInt;JLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $repoId:J

.field final synthetic $type:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->$repoId:J

    iput-object p3, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->$type:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->invoke(Ljava/lang/String;Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lkotlinx/serialization/json/JsonArray;)Ljava/util/List;
    .locals 11

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    .line 32
    sget-object v2, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v3, Lorg/fdroid/index/v2/FileV2;

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
    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    iget-wide v6, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->$repoId:J

    iget-object v8, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->$packageName:Ljava/lang/String;

    iget-object v9, p0, Lorg/fdroid/database/AppDaoInt$diffAndUpdateLocalizedFileList$1;->$type:Ljava/lang/String;

    .line 1549
    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Lorg/fdroid/index/v2/FileV2;

    move-wide v1, v6

    move-object v3, v8

    move-object v4, v9

    move-object v5, p1

    .line 279
    invoke-static/range {v0 .. v5}, Lorg/fdroid/database/AppKt;->toLocalizedFileList(Lorg/fdroid/index/v2/FileV2;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/LocalizedFileList;

    move-result-object v0

    .line 1621
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v10
.end method
