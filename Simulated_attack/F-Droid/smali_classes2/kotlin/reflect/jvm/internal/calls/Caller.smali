.class public interface abstract Lkotlin/reflect/jvm/internal/calls/Caller;
.super Ljava/lang/Object;
.source "Caller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/calls/Caller$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract call([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getMember()Ljava/lang/reflect/Member;
.end method

.method public abstract getParameterTypes()Ljava/util/List;
.end method

.method public abstract getReturnType()Ljava/lang/reflect/Type;
.end method
