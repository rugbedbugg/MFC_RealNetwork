.class public interface abstract Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.super Ljava/lang/Object;
.source "TypeConstructor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;


# virtual methods
.method public abstract getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.end method

.method public abstract getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
.end method

.method public abstract getParameters()Ljava/util/List;
.end method

.method public abstract getSupertypes()Ljava/util/Collection;
.end method

.method public abstract isDenotable()Z
.end method

.method public abstract refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.end method
