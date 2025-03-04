.class public interface abstract Lkotlinx/coroutines/channels/ReceiveChannel;
.super Ljava/lang/Object;
.source "Channel.kt"


# virtual methods
.method public abstract cancel(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract iterator()Lkotlinx/coroutines/channels/ChannelIterator;
.end method

.method public abstract receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract receiveCatching-JP2dKIU(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract tryReceive-PtdJZtk()Ljava/lang/Object;
.end method
