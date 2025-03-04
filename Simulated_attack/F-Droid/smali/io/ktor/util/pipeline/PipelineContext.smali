.class public abstract Lio/ktor/util/pipeline/PipelineContext;
.super Ljava/lang/Object;
.source "PipelineContext.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# instance fields
.field private final context:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/util/pipeline/PipelineContext;->context:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract execute$ktor_utils(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final getContext()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/util/pipeline/PipelineContext;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
