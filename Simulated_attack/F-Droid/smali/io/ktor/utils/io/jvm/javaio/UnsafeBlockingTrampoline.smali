.class final Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "Blocking.kt"


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;

    invoke-direct {v0}, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;-><init>()V

    sput-object v0, Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/UnsafeBlockingTrampoline;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
