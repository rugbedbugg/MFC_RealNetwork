.class public abstract Lkotlinx/serialization/json/internal/ComposersKt;
.super Ljava/lang/Object;
.source "Composers.kt"


# direct methods
.method public static final Composer(Lkotlinx/serialization/json/internal/JsonWriter;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/Composer;
    .locals 1

    const-string v0, "sb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;-><init>(Lkotlinx/serialization/json/internal/JsonWriter;Lkotlinx/serialization/json/Json;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/internal/Composer;-><init>(Lkotlinx/serialization/json/internal/JsonWriter;)V

    :goto_0
    return-object v0
.end method
