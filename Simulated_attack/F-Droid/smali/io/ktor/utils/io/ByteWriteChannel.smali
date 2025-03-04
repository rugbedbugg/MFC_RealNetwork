.class public interface abstract Lio/ktor/utils/io/ByteWriteChannel;
.super Ljava/lang/Object;
.source "ByteWriteChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteWriteChannel$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract close(Ljava/lang/Throwable;)Z
.end method

.method public abstract flush()V
.end method

.method public abstract getAutoFlush()Z
.end method

.method public abstract write(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
