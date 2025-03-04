.class final Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;->attachJob(Lkotlinx/coroutines/Job;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->access$setAttachedJob$p(Lio/ktor/utils/io/ByteBufferChannel;Lkotlinx/coroutines/Job;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;->this$0:Lio/ktor/utils/io/ByteBufferChannel;

    .line 90
    invoke-static {p1}, Lio/ktor/utils/io/ExceptionUtilsKt;->unwrapCancellationException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->cancel(Ljava/lang/Throwable;)Z

    return-void
.end method
