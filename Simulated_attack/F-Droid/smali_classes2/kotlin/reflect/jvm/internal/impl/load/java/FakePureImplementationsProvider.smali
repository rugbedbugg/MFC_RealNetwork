.class public final Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;
.super Ljava/lang/Object;
.source "FakePureImplementationsProvider.kt"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;

.field private static final pureImplementationsClassIds:Ljava/util/Map;

.field private static final pureImplementationsFqNames:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;

    .line 16
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->pureImplementationsClassIds:Ljava/util/Map;

    .line 22
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->getMutableList()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    const-string v4, "java.util.ArrayList"

    const-string v5, "java.util.LinkedList"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->fqNameListOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->implementedWith(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    .line 23
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->getMutableSet()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    const-string v4, "java.util.TreeSet"

    const-string v5, "java.util.LinkedHashSet"

    const-string v6, "java.util.HashSet"

    filled-new-array {v6, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->fqNameListOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->implementedWith(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    .line 24
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/StandardClassIds;->getMutableMap()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    const-string v3, "java.util.concurrent.ConcurrentHashMap"

    const-string v4, "java.util.concurrent.ConcurrentSkipListMap"

    const-string v5, "java.util.HashMap"

    const-string v6, "java.util.TreeMap"

    const-string v7, "java.util.LinkedHashMap"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->fqNameListOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->implementedWith(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    .line 28
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v3, "java.util.function.Function"

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    const-string v3, "topLevel(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "java.util.function.UnaryOperator"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->fqNameListOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->implementedWith(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    .line 29
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v4, "java.util.function.BiFunction"

    invoke-direct {v2, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "java.util.function.BinaryOperator"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->fqNameListOf([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->implementedWith(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 33
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 153
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->pureImplementationsFqNames:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final varargs fqNameListOf([Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 11065
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 36
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-direct {v4, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    .line 11401
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final implementedWith(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->pureImplementationsClassIds:Ljava/util/Map;

    .line 1285
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1286
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getPurelyImplementedInterface(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .locals 1

    const-string v0, "classFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/FakePureImplementationsProvider;->pureImplementationsFqNames:Ljava/util/Map;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object p1
.end method
