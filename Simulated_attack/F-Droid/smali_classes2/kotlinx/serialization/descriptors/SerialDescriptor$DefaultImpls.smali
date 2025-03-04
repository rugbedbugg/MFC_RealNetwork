.class public abstract Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;
.super Ljava/lang/Object;
.source "SerialDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/SerialDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getAnnotations(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/List;
    .locals 0

    .line 190
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
