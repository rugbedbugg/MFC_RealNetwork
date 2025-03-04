.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.super Ljava/lang/Object;
.source "PropertyDescriptor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptorWithAccessors;


# virtual methods
.method public abstract getAccessors()Ljava/util/List;
.end method

.method public abstract getBackingField()Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;
.end method

.method public abstract getDelegateField()Lkotlin/reflect/jvm/internal/impl/descriptors/FieldDescriptor;
.end method

.method public abstract getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
.end method

.method public abstract getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;
.end method

.method public abstract substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;
.end method
