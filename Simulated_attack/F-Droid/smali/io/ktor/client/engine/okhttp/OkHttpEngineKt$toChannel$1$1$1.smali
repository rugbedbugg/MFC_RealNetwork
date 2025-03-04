.class final Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OkHttpEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lastRead:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $requestData:Lio/ktor/client/request/HttpRequestData;

.field final synthetic $source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lokio/BufferedSource;Lio/ktor/client/request/HttpRequestData;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->$lastRead:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->$source:Lokio/BufferedSource;

    iput-object p3, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->$requestData:Lio/ktor/client/request/HttpRequestData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->$lastRead:Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_0
    iget-object v1, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->$source:Lokio/BufferedSource;

    .line 157
    invoke-interface {v1, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/ktor/client/engine/okhttp/OkHttpEngineKt$toChannel$1$1$1;->$requestData:Lio/ktor/client/request/HttpRequestData;

    .line 159
    invoke-static {p1, v0}, Lio/ktor/client/engine/okhttp/OkHttpEngineKt;->access$mapExceptions(Ljava/lang/Throwable;Lio/ktor/client/request/HttpRequestData;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
