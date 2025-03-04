.class public abstract Lkotlinx/serialization/json/JsonSchemaCacheKt;
.super Ljava/lang/Object;
.source "JsonSchemaCache.kt"


# direct methods
.method public static final getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/DescriptorSchemaCache;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->get_schemaCache$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    move-result-object p0

    return-object p0
.end method
