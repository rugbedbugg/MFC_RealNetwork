.class public final Lkotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1;
.super Ljava/lang/ClassValue;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueParametrizedCache;->initClassValue()Lkotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ClassValueParametrizedCache$initClassValue$1;->computeValue(Ljava/lang/Class;)Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    move-result-object p1

    return-object p1
.end method

.method protected computeValue(Ljava/lang/Class;)Lkotlinx/serialization/internal/ParametrizedCacheEntry;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance p1, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    invoke-direct {p1}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;-><init>()V

    return-object p1
.end method
