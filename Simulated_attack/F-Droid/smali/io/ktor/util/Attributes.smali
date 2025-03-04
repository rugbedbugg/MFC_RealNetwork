.class public interface abstract Lio/ktor/util/Attributes;
.super Ljava/lang/Object;
.source "Attributes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/util/Attributes$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract computeIfAbsent(Lio/ktor/util/AttributeKey;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
.end method

.method public abstract contains(Lio/ktor/util/AttributeKey;)Z
.end method

.method public abstract get(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
.end method

.method public abstract getAllKeys()Ljava/util/List;
.end method

.method public abstract getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
.end method

.method public abstract put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V
.end method

.method public abstract remove(Lio/ktor/util/AttributeKey;)V
.end method
