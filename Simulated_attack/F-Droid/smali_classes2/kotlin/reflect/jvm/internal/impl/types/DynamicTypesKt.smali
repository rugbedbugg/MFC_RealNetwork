.class public abstract Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;
.super Ljava/lang/Object;
.source "dynamicTypes.kt"


# direct methods
.method public static final isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    const/4 p0, 0x0

    return p0
.end method
