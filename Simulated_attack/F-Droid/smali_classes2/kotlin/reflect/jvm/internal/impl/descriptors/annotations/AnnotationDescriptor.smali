.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
.super Ljava/lang/Object;
.source "AnnotationDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAllValueArguments()Ljava/util/Map;
.end method

.method public abstract getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
.end method

.method public abstract getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;
.end method

.method public abstract getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method
