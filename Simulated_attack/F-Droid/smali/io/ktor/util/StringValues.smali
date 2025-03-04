.class public interface abstract Lio/ktor/util/StringValues;
.super Ljava/lang/Object;
.source "StringValues.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/StringValues$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract entries()Ljava/util/Set;
.end method

.method public abstract forEach(Lkotlin/jvm/functions/Function2;)V
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getCaseInsensitiveName()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract names()Ljava/util/Set;
.end method
