.class public interface abstract Lkotlinx/serialization/descriptors/SerialDescriptor;
.super Ljava/lang/Object;
.source "SerialDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAnnotations()Ljava/util/List;
.end method

.method public abstract getElementAnnotations(I)Ljava/util/List;
.end method

.method public abstract getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
.end method

.method public abstract getElementIndex(Ljava/lang/String;)I
.end method

.method public abstract getElementName(I)Ljava/lang/String;
.end method

.method public abstract getElementsCount()I
.end method

.method public abstract getKind()Lkotlinx/serialization/descriptors/SerialKind;
.end method

.method public abstract getSerialName()Ljava/lang/String;
.end method

.method public abstract isElementOptional(I)Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isNullable()Z
.end method
