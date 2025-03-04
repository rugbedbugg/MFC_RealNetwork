.class public interface abstract Lio/ktor/utils/io/ByteReadChannel;
.super Ljava/lang/Object;
.source "ByteReadChannelJVM.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteReadChannel$Companion;,
        Lio/ktor/utils/io/ByteReadChannel$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel$Companion;->$$INSTANCE:Lio/ktor/utils/io/ByteReadChannel$Companion;

    sput-object v0, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/Throwable;)Z
.end method

.method public abstract getAvailableForRead()I
.end method

.method public abstract getClosedCause()Ljava/lang/Throwable;
.end method

.method public abstract isClosedForRead()Z
.end method

.method public abstract readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
