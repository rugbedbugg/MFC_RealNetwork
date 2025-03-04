.class public final Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;
.super Ljava/lang/ClassValue;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueCache;->initClassValue()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/internal/ClassValueCache;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/ClassValueCache;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    .line 45
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;->computeValue(Ljava/lang/Class;)Lkotlinx/serialization/internal/CacheEntry;

    move-result-object p1

    return-object p1
.end method

.method protected computeValue(Ljava/lang/Class;)Lkotlinx/serialization/internal/CacheEntry;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lkotlinx/serialization/internal/CacheEntry;

    iget-object v1, p0, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    invoke-static {v1}, Lkotlinx/serialization/internal/ClassValueCache;->access$getCompute$p(Lkotlinx/serialization/internal/ClassValueCache;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/CacheEntry;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
