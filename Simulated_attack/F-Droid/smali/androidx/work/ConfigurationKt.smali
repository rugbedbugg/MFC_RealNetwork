.class public abstract Landroidx/work/ConfigurationKt;
.super Ljava/lang/Object;
.source "Configuration.kt"


# static fields
.field private static final DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final synthetic access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/ConfigurationKt;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method private static final createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 2

    .line 465
    new-instance v0, Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;

    invoke-direct {v0, p0}, Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;-><init>(Z)V

    .line 475
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x4

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 473
    invoke-static {p0, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "newFixedThreadPool(\n    \u2026)),\n        factory\n    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT()I
    .locals 1

    .line 0
    sget v0, Landroidx/work/ConfigurationKt;->DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT:I

    return v0
.end method
