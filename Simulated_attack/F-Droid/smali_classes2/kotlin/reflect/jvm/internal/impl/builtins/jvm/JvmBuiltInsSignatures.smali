.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "JvmBuiltInsSignatures.kt"


# static fields
.field private static final DEPRECATED_LIST_METHODS:Ljava/util/Set;

.field private static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

.field private static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

.field private static final HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

.field private static final MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

.field private static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

.field private static final VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 55

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    .line 17
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const-string v2, "toArray()[Ljava/lang/Object;"

    const-string v3, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Collection"

    invoke-virtual {v1, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    .line 24
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveValueMethodsSet()Ljava/util/Set;

    move-result-object v2

    const-string v4, "reversed()Ljava/util/List;"

    const-string v5, "sort(Ljava/util/Comparator;)V"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "List"

    .line 26
    invoke-virtual {v1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 24
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v7, "codePointAt(I)I"

    const-string v8, "codePointBefore(I)I"

    const-string v9, "codePointCount(II)I"

    const-string v10, "compareToIgnoreCase(Ljava/lang/String;)I"

    const-string v11, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const-string v12, "contains(Ljava/lang/CharSequence;)Z"

    const-string v13, "contentEquals(Ljava/lang/CharSequence;)Z"

    const-string v14, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const-string v15, "endsWith(Ljava/lang/String;)Z"

    const-string v16, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const-string v17, "getBytes()[B"

    const-string v18, "getBytes(II[BI)V"

    const-string v19, "getBytes(Ljava/lang/String;)[B"

    const-string v20, "getBytes(Ljava/nio/charset/Charset;)[B"

    const-string v21, "getChars(II[CI)V"

    const-string v22, "indexOf(I)I"

    const-string v23, "indexOf(II)I"

    const-string v24, "indexOf(Ljava/lang/String;)I"

    const-string v25, "indexOf(Ljava/lang/String;I)I"

    const-string v26, "intern()Ljava/lang/String;"

    const-string v27, "isEmpty()Z"

    const-string v28, "lastIndexOf(I)I"

    const-string v29, "lastIndexOf(II)I"

    const-string v30, "lastIndexOf(Ljava/lang/String;)I"

    const-string v31, "lastIndexOf(Ljava/lang/String;I)I"

    const-string v32, "matches(Ljava/lang/String;)Z"

    const-string v33, "offsetByCodePoints(II)I"

    const-string v34, "regionMatches(ILjava/lang/String;II)Z"

    const-string v35, "regionMatches(ZILjava/lang/String;II)Z"

    const-string v36, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v37, "replace(CC)Ljava/lang/String;"

    const-string v38, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v39, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const-string v40, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const-string v41, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const-string v42, "startsWith(Ljava/lang/String;I)Z"

    const-string v43, "startsWith(Ljava/lang/String;)Z"

    const-string v44, "substring(II)Ljava/lang/String;"

    const-string v45, "substring(I)Ljava/lang/String;"

    const-string v46, "toCharArray()[C"

    const-string v47, "toLowerCase()Ljava/lang/String;"

    const-string v48, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v49, "toUpperCase()Ljava/lang/String;"

    const-string v50, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v51, "trim()Ljava/lang/String;"

    const-string v52, "isBlank()Z"

    const-string v53, "lines()Ljava/util/stream/Stream;"

    const-string v54, "repeat(I)Ljava/lang/String;"

    filled-new-array/range {v7 .. v54}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "String"

    .line 33
    invoke-virtual {v1, v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 24
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "isInfinite()Z"

    const-string v8, "isNaN()Z"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "Double"

    .line 55
    invoke-virtual {v1, v10, v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 24
    invoke-static {v2, v9}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, "Float"

    .line 56
    invoke-virtual {v1, v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 24
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "getDeclaringClass()Ljava/lang/Class;"

    const-string v9, "finalize()V"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "Enum"

    .line 58
    invoke-virtual {v1, v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 24
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "isEmpty()Z"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "CharSequence"

    .line 59
    invoke-virtual {v1, v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 24
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    const-string v2, "getFirst()Ljava/lang/Object;"

    const-string v4, "getLast()Ljava/lang/Object;"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/Set;

    const-string v2, "codePoints()Ljava/util/stream/IntStream;"

    const-string v4, "chars()Ljava/util/stream/IntStream;"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v9, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "forEachRemaining(Ljava/util/function/Consumer;)V"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "Iterator"

    .line 86
    invoke-virtual {v1, v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "forEach(Ljava/util/function/Consumer;)V"

    const-string v9, "spliterator()Ljava/util/Spliterator;"

    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    const-string v10, "Iterable"

    .line 91
    invoke-virtual {v1, v10, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v10, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    const-string v11, "fillInStackTrace()Ljava/lang/Throwable;"

    const-string v12, "getLocalizedMessage()Ljava/lang/String;"

    const-string v13, "printStackTrace()V"

    const-string v14, "printStackTrace(Ljava/io/PrintStream;)V"

    const-string v15, "printStackTrace(Ljava/io/PrintWriter;)V"

    const-string v16, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const-string v17, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    const-string v18, "getSuppressed()[Ljava/lang/Throwable;"

    const-string v19, "addSuppressed(Ljava/lang/Throwable;)V"

    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    move-result-object v4

    const-string v10, "Throwable"

    .line 96
    invoke-virtual {v1, v10, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "parallelStream()Ljava/util/stream/Stream;"

    const-string v11, "stream()Ljava/util/stream/Stream;"

    const-string v12, "removeIf(Ljava/util/function/Predicate;)Z"

    filled-new-array {v9, v4, v11, v12}, [Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v4, "removeFirst()Ljava/lang/Object;"

    const-string v9, "removeLast()Ljava/lang/Object;"

    const-string v11, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    const-string v13, "addFirst(Ljava/lang/Object;)V"

    const-string v14, "addLast(Ljava/lang/Object;)V"

    filled-new-array {v11, v13, v14, v4, v9}, [Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v13, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v14, "forEach(Ljava/util/function/BiConsumer;)V"

    const-string v15, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v16, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v17, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v18, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v19, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v20, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v21, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v22, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    filled-new-array/range {v13 .. v22}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "Map"

    .line 121
    invoke-virtual {v1, v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 81
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    filled-new-array {v11, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1, v6, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 137
    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    const-string v11, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v12, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v13, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v14, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v15, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v16, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v17, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v18, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v19, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v1, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 137
    invoke-static {v2, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 156
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveStringConstructorsSet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "D"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 156
    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const-string v11, "[C"

    const-string v12, "[CII"

    const-string v13, "[III"

    const-string v14, "[BIILjava/lang/String;"

    const-string v15, "[BIILjava/nio/charset/Charset;"

    const-string v16, "[BLjava/lang/String;"

    const-string v17, "[BLjava/nio/charset/Charset;"

    const-string v18, "[BII"

    const-string v19, "[B"

    const-string v20, "Ljava/lang/StringBuffer;"

    const-string v21, "Ljava/lang/StringBuilder;"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 156
    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    const-string v0, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildPrimitiveStringConstructorsSet()Ljava/util/Set;
    .locals 6

    .line 211
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/16 v1, 0x8

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v2, 0x0

    .line 179
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v3, v1, v2

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    .line 180
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v3, v1, v2

    .line 178
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1446
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1447
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 183
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Ljava/lang/String;"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1447
    check-cast v3, Ljava/lang/Iterable;

    .line 1448
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private final buildPrimitiveValueMethodsSet()Ljava/util/Set;
    .locals 7

    .line 205
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v2, 0x0

    .line 65
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1446
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1447
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 66
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "asString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Value()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1447
    check-cast v3, Ljava/lang/Iterable;

    .line 1448
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final getDEPRECATED_LIST_METHODS()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DEPRECATED_LIST_METHODS:Ljava/util/Set;

    return-object v0
.end method

.method public final getDROP_LIST_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getMUTABLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isSerializableInJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 191
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 193
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v0, Ljava/io/Serializable;

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method
