.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;
.super Ljava/lang/Object;
.source "javaElements.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifier;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaModifierListOwner;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypeParameterListOwner;


# virtual methods
.method public abstract getConstructors()Ljava/util/Collection;
.end method

.method public abstract getFields()Ljava/util/Collection;
.end method

.method public abstract getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
.end method

.method public abstract getInnerClassNames()Ljava/util/Collection;
.end method

.method public abstract getLightClassOriginKind()Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;
.end method

.method public abstract getMethods()Ljava/util/Collection;
.end method

.method public abstract getOuterClass()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;
.end method

.method public abstract getPermittedTypes()Ljava/util/Collection;
.end method

.method public abstract getRecordComponents()Ljava/util/Collection;
.end method

.method public abstract getSupertypes()Ljava/util/Collection;
.end method

.method public abstract hasDefaultConstructor()Z
.end method

.method public abstract isAnnotationType()Z
.end method

.method public abstract isEnum()Z
.end method

.method public abstract isInterface()Z
.end method

.method public abstract isRecord()Z
.end method

.method public abstract isSealed()Z
.end method
