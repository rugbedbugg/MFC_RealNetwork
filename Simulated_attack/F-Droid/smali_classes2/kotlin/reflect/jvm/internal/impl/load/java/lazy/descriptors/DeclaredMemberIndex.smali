.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/DeclaredMemberIndex;
.super Ljava/lang/Object;
.source "DeclaredMemberIndex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/DeclaredMemberIndex$Empty;
    }
.end annotation


# virtual methods
.method public abstract findFieldByName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaField;
.end method

.method public abstract findMethodsByName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;
.end method

.method public abstract findRecordComponentByName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaRecordComponent;
.end method

.method public abstract getFieldNames()Ljava/util/Set;
.end method

.method public abstract getMethodNames()Ljava/util/Set;
.end method

.method public abstract getRecordComponentNames()Ljava/util/Set;
.end method
