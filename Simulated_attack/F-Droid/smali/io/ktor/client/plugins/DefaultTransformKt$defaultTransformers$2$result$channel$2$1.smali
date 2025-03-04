.class final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $responseJobHolder:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableJob;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$2$1;->$responseJobHolder:Lkotlinx/coroutines/CompletableJob;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$2$1;->$responseJobHolder:Lkotlinx/coroutines/CompletableJob;

    .line 112
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    return-void
.end method
