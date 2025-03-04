.class final Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Blocking.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;-><init>(Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter$disposable$1;->this$0:Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;

    .line 176
    invoke-static {v0}, Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;->access$getEnd$p(Lio/ktor/utils/io/jvm/javaio/BlockingAdapter;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
