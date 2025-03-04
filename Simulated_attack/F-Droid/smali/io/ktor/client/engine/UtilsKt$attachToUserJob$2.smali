.class public final Lio/ktor/client/engine/UtilsKt$attachToUserJob$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $cleanupHandler:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/UtilsKt$attachToUserJob$2;->$cleanupHandler:Lkotlinx/coroutines/DisposableHandle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/UtilsKt$attachToUserJob$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lio/ktor/client/engine/UtilsKt$attachToUserJob$2;->$cleanupHandler:Lkotlinx/coroutines/DisposableHandle;

    .line 102
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    return-void
.end method
