.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
.super Ljava/lang/Object;
.source "PackageViewDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;


# virtual methods
.method public abstract getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
.end method

.method public abstract getFragments()Ljava/util/List;
.end method

.method public abstract getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
.end method

.method public abstract isEmpty()Z
.end method
