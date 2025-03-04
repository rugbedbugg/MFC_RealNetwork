.class public final Lkotlinx/serialization/json/internal/CharArrayPool;
.super Ljava/lang/Object;
.source "CharArrayPool.kt"


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

.field private static final MAX_CHARS_IN_POOL:I

.field private static final arrays:Lkotlin/collections/ArrayDeque;

.field private static charsTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/internal/CharArrayPool;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/CharArrayPool;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 6
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    .line 12
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-string v0, "kotlinx.serialization.json.pool.size"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProperty(\"kotlinx.ser\u2026lization.json.pool.size\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x100000

    :goto_1
    sput v0, Lkotlinx/serialization/json/internal/CharArrayPool;->MAX_CHARS_IN_POOL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final release([C)V
    .locals 3

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    monitor-enter p0

    :try_start_0
    sget v0, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    .line 28
    array-length v1, p1

    add-int/2addr v1, v0

    sget v2, Lkotlinx/serialization/json/internal/CharArrayPool;->MAX_CHARS_IN_POOL:I

    if-ge v1, v2, :cond_0

    .line 29
    array-length v1, p1

    add-int/2addr v0, v1

    sput v0, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    .line 30
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final take()[C
    .locals 3

    .line 21
    monitor-enter p0

    :try_start_0
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->arrays:Lkotlin/collections/ArrayDeque;

    .line 22
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-eqz v0, :cond_0

    sget v1, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I

    array-length v2, v0

    sub-int/2addr v1, v2

    sput v1, Lkotlinx/serialization/json/internal/CharArrayPool;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    monitor-exit p0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    new-array v0, v0, [C

    :cond_1
    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
