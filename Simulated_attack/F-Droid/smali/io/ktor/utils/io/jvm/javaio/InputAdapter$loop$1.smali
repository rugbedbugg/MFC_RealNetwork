.class public final Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;
.super Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;
.source "Blocking.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/InputAdapter;-><init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/ByteReadChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/Job;Lio/ktor/utils/io/jvm/javaio/InputAdapter;)V
    .locals 0

    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    .line 33
    invoke-direct {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method


# virtual methods
.method protected loop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    iget v1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;-><init>(Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    iget-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    move-object v2, p0

    .line 275
    :cond_4
    iput p1, v2, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->result:I

    .line 277
    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    .line 278
    invoke-static {v2, v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$rendezvousBlock(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 277
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_5

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    const-string v5, "null cannot be cast to non-null type kotlin.ByteArray"

    .line 37
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [B

    .line 38
    iget-object v5, v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    invoke-static {v5}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->access$getChannel$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v5

    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getOffset()I

    move-result v6

    invoke-virtual {v2}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->getLength()I

    move-result v7

    iput-object v2, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1$loop$1;->label:I

    invoke-interface {v5, p1, v6, v7, v0}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v5, -0x1

    if-ne p1, v5, :cond_4

    .line 40
    iget-object v0, v2, Lio/ktor/utils/io/jvm/javaio/InputAdapter$loop$1;->this$0:Lio/ktor/utils/io/jvm/javaio/InputAdapter;

    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/InputAdapter;->access$getContext$p(Lio/ktor/utils/io/jvm/javaio/InputAdapter;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 44
    invoke-virtual {v2, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->finish(I)V

    .line 45
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
