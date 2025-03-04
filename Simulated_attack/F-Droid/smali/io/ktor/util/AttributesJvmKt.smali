.class public abstract Lio/ktor/util/AttributesJvmKt;
.super Ljava/lang/Object;
.source "AttributesJvm.kt"


# direct methods
.method public static final Attributes(Z)Lio/ktor/util/Attributes;
    .locals 0

    if-eqz p0, :cond_0

    .line 13
    new-instance p0, Lio/ktor/util/ConcurrentSafeAttributes;

    invoke-direct {p0}, Lio/ktor/util/ConcurrentSafeAttributes;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lio/ktor/util/HashMapAttributes;

    invoke-direct {p0}, Lio/ktor/util/HashMapAttributes;-><init>()V

    :goto_0
    return-object p0
.end method
