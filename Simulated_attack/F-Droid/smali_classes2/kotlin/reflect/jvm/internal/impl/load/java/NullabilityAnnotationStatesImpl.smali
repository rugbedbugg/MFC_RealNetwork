.class public final Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;
.super Ljava/lang/Object;
.source "JavaNullabilityAnnotationSettings.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStates;


# instance fields
.field private final cache:Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;

.field private final states:Ljava/util/Map;

.field private final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const-string v0, "states"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;->states:Ljava/util/Map;

    .line 111
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v0, "Java nullability annotation states"

    invoke-direct {p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 113
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl$cache$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl$cache$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;)V

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;

    move-result-object p1

    const-string v0, "createMemoizedFunctionWithNullableValues(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;->cache:Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;

    return-void
.end method


# virtual methods
.method public get(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/Object;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;->cache:Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNullable;

    .line 117
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStates()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/NullabilityAnnotationStatesImpl;->states:Ljava/util/Map;

    return-object v0
.end method
