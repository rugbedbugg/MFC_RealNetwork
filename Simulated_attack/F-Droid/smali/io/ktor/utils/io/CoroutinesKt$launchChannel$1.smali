.class final Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Coroutines.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/CoroutinesKt;->launchChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteChannel;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/ChannelJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $channel:Lio/ktor/utils/io/ByteChannel;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteChannel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;->$channel:Lio/ktor/utils/io/ByteChannel;

    .line 158
    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    return-void
.end method
