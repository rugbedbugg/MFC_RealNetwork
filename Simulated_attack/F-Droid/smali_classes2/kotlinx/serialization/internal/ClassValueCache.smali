.class final Lkotlinx/serialization/internal/ClassValueCache;
.super Ljava/lang/Object;
.source "Caching.kt"

# interfaces
.implements Lkotlinx/serialization/internal/SerializerCache;


# instance fields
.field private final classValue:Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

.field private final compute:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->compute:Lkotlin/jvm/functions/Function1;

    .line 43
    invoke-direct {p0}, Lkotlinx/serialization/internal/ClassValueCache;->initClassValue()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    return-void
.end method

.method public static final synthetic access$getCompute$p(Lkotlinx/serialization/internal/ClassValueCache;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 41
    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache;->compute:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final initClassValue()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;
    .locals 1

    .line 45
    new-instance v0, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;-><init>(Lkotlinx/serialization/internal/ClassValueCache;)V

    return-object v0
.end method


# virtual methods
.method public get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    .line 55
    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/serialization/internal/ClassValueCache$$ExternalSyntheticApiModelOutline0;->m(Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/internal/CacheEntry;

    iget-object p1, p1, Lkotlinx/serialization/internal/CacheEntry;->serializer:Lkotlinx/serialization/KSerializer;

    return-object p1
.end method
