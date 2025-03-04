.class public interface abstract Lkotlin/reflect/KCallable;
.super Ljava/lang/Object;
.source "KCallable.kt"

# interfaces
.implements Lkotlin/reflect/KAnnotatedElement;


# virtual methods
.method public varargs abstract call([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract callBy(Ljava/util/Map;)Ljava/lang/Object;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameters()Ljava/util/List;
.end method

.method public abstract getReturnType()Lkotlin/reflect/KType;
.end method

.method public abstract getTypeParameters()Ljava/util/List;
.end method

.method public abstract getVisibility()Lkotlin/reflect/KVisibility;
.end method

.method public abstract isAbstract()Z
.end method

.method public abstract isFinal()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isSuspend()Z
.end method
