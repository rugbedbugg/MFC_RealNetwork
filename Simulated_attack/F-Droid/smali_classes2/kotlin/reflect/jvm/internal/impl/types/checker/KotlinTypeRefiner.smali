.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;
.source "KotlinTypeRefiner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
.end method

.method public abstract getOrPutScopeForClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract isRefinementNeededForModule(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Z
.end method

.method public abstract isRefinementNeededForTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
.end method

.method public abstract refineDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
.end method

.method public abstract refineSupertypes(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/util/Collection;
.end method

.method public abstract refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method
