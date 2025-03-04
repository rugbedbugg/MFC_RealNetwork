.class public abstract Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;
.super Ljava/lang/Object;
.source "ErasureTypeAttributes.kt"


# instance fields
.field private final defaultType:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

.field private final howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

.field private final visitedTypeParameters:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V
    .locals 1

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;->howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;->defaultType:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-void
.end method


# virtual methods
.method public abstract getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract getHowThisTypeIsUsed()Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;
.end method

.method public abstract getVisitedTypeParameters()Ljava/util/Set;
.end method

.method public abstract hashCode()I
.end method

.method public abstract withNewVisitedTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;
.end method
